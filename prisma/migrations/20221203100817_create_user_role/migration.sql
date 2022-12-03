-- CreateTable
CREATE TABLE "users_roles" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "role_id" TEXT NOT NULL,
    "permissionRoleId" TEXT,

    CONSTRAINT "users_roles_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "users_roles" ADD CONSTRAINT "users_roles_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "users_roles" ADD CONSTRAINT "users_roles_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "users_roles" ADD CONSTRAINT "users_roles_permissionRoleId_fkey" FOREIGN KEY ("permissionRoleId") REFERENCES "permissions_roles"("id") ON DELETE SET NULL ON UPDATE CASCADE;
