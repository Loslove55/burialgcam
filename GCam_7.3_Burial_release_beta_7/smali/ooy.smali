.class public final enum Looy;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Looy;

.field private static final synthetic b:[Looy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Looy;

    const-string v1, "APPEND"

    invoke-direct {v0, v1}, Looy;-><init>(Ljava/lang/String;)V

    sput-object v0, Looy;->a:Looy;

    const/4 v1, 0x1

    new-array v1, v1, [Looy;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Looy;->b:[Looy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Looy;
    .locals 1

    sget-object v0, Looy;->b:[Looy;

    invoke-virtual {v0}, [Looy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Looy;

    return-object v0
.end method
