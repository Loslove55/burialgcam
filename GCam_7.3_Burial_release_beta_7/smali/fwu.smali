.class public abstract Lfwu;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfwt;
    .locals 2

    new-instance v0, Lfwt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfwt;-><init>([B)V

    return-object v0
.end method

.method public static d()Lfwu;
    .locals 2

    invoke-static {}, Lfwu;->a()Lfwt;

    move-result-object v0

    sget-object v1, Lhjy;->a:Lhjy;

    invoke-virtual {v0, v1}, Lfwt;->a(Lhjy;)V

    sget-object v1, Lhjz;->a:Lhjz;

    invoke-virtual {v0, v1}, Lfwt;->a(Lhjz;)V

    invoke-virtual {v0}, Lfwt;->a()Lfwu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Lhjy;
.end method

.method public abstract c()Lhjz;
.end method
