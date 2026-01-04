ALTER TABLE "email_verifications" ALTER COLUMN "token" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "email_verifications" ALTER COLUMN "expires_at" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "email_verifications" ADD CONSTRAINT "email_verifications_token_unique" UNIQUE("token");