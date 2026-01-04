import { DrizzleAsyncProvider } from "@/database/database.provider";
import {
    Injectable,
    CanActivate,
    ExecutionContext,
    Inject,
} from "@nestjs/common";
import { Reflector } from "@nestjs/core";
import * as schema from "@/database/schema";
import { NodePgDatabase } from "drizzle-orm/node-postgres";
import { eq } from "drizzle-orm";

@Injectable()
export class RolesGuard implements CanActivate {
    constructor(
        private reflector: Reflector,
        @Inject(DrizzleAsyncProvider)
        private db: NodePgDatabase<typeof schema>
    ) {}

    async canActivate(context: ExecutionContext): Promise<boolean> {
        const request = context.switchToHttp().getRequest();
        const userId = request.session.userId;

        if (!userId) return false;

        const [user] = await this.db
            .select()
            .from(schema.users)
            .where(eq(schema.users.id, userId));
        if (!user) return false;

        const requiredRoles = this.reflector.get<string[]>(
            "roles",
            context.getHandler()
        );
        if (!requiredRoles) return true;

        return requiredRoles.includes(user.role);
    }
}
