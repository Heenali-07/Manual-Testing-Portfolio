-- Verify user role assignment
SELECT user_id, role_name
FROM user_roles
WHERE user_id = '12345';

-- Verify PCR updates by unauthorized roles
SELECT *
FROM project_audit_log
WHERE field_name = 'PCR Code'
AND updated_by_role = 'Sales';
