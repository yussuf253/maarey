-- ─────────────────────────────────────────────────────────────────────────────
-- Tombstone cleanup: purge sync_hard_deletes rows older than 90 days.
--
-- After 90 days every connected device will have pulled the deletion at least
-- once, so the tombstone row serves no further purpose.  The function is
-- idempotent and safe to call from a cron job or the Supabase Edge Function
-- scheduler.
-- ─────────────────────────────────────────────────────────────────────────────

-- Purge tombstones created more than 90 days ago.
-- Returns the number of rows deleted so callers can log the result.
CREATE OR REPLACE FUNCTION public.purge_old_tombstones(older_than_days integer DEFAULT 90)
RETURNS integer
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  deleted_count integer;
BEGIN
  DELETE FROM public.sync_hard_deletes
  WHERE created_at < now() - make_interval(days => older_than_days);

  GET DIAGNOSTICS deleted_count = ROW_COUNT;
  RETURN deleted_count;
END;
$$;

COMMENT ON FUNCTION public.purge_old_tombstones(integer)
  IS 'Removes tombstone rows from sync_hard_deletes older than the given number of days (default 90).';

-- Optional: grant execute to the service role only (default for SECURITY DEFINER).
-- No GRANT needed — only the function owner (postgres / service role) can call it.
