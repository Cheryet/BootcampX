-- SELECT AVG(
--   SELECT (started_at-completed_at)=duration
--   FROM assistance_requests
-- ) as average_assistance_request_duration
-- FROM assistance_requests

SELECT AVG(completed_at-started_at) as average_assistance_request_duration
FROM assistance_requests