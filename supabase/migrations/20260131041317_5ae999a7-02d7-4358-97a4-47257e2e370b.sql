-- Assign super_admin role to user 9497589094
UPDATE public.user_roles
SET role = 'super_admin'
WHERE user_id = '0cd34c33-e4ad-42ef-b87a-18d77e708977';

-- If no row exists, insert one
INSERT INTO public.user_roles (user_id, role)
SELECT '0cd34c33-e4ad-42ef-b87a-18d77e708977', 'super_admin'::app_role
WHERE NOT EXISTS (
  SELECT 1 FROM public.user_roles WHERE user_id = '0cd34c33-e4ad-42ef-b87a-18d77e708977'
);