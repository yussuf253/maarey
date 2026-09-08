-- ─────────────────────────────────────────────────────────────────────────────
-- Drop dead sync_queue RPC functions.
--
-- SyncQueueService and enqueueMutation have been removed from the client
-- (2026-09-08).  No code path calls rpc_process_sync_queue anymore, so the
-- server-side functions are dead code.
--
-- Local sync_queue SQLite table was also removed from the client in the same
-- change — there is no server-side sync_queue table to drop.
-- ─────────────────────────────────────────────────────────────────────────────

-- 1) Public wrapper (JWT guard + per-mutation isolation)
DROP FUNCTION IF EXISTS public.rpc_process_sync_queue(jsonb);

-- 2) Base function (renamed from rpc_process_sync_queue in earlier migrations)
DROP FUNCTION IF EXISTS public.rpc_process_sync_queue_base(jsonb);

-- 3) Legacy handler (service orders / product variants / invoices wrapper)
DROP FUNCTION IF EXISTS public._rpc_process_sync_queue_legacy(jsonb);

-- 4) Innermost legacy base (renamed from _rpc_process_sync_queue_legacy)
DROP FUNCTION IF EXISTS public._rpc_process_sync_queue_legacy_base(jsonb);

-- 5) Helper functions used only by the queue (clock-skew guard + timestamp parser)
DROP FUNCTION IF EXISTS public._reject_clock_skew(jsonb);
DROP FUNCTION IF EXISTS public._parse_client_ts(jsonb);
