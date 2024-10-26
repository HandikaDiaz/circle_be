import { NextFunction, Request, Response } from "express";
import { RoleEnum } from "../../prisma/generated/client";


export function authorize(role: RoleEnum) {
    return (req: Request, res: Response, next: NextFunction) => {
        const user = (req as any).user;

        if (user.role !== role)
            return res.status(403).json({
                message: "FORBIDDEN",
            });

        next();
    };
}