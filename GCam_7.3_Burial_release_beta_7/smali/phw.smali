.class final Lphw;
.super Ljava/lang/Object;


# static fields
.field static final a:Lpdv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lpfv;->i:Lpfv;

    sget-object v1, Lpfv;->k:Lpfv;

    sget-object v2, Lpht;->a:Lpht;

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lpdv;->a(Lpfv;Ljava/lang/Object;Lpfv;Ljava/lang/Object;)Lpdv;

    move-result-object v0

    sput-object v0, Lphw;->a:Lpdv;

    return-void
.end method
