.class public final Ljyq;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljyq;->a:Lpnh;

    return-void
.end method


# virtual methods
.method public final a()Ljys;
    .locals 2

    iget-object v0, p0, Ljyq;->a:Lpnh;

    check-cast v0, Lduz;

    invoke-virtual {v0}, Lduz;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lbfd;->f(Landroid/content/Intent;)Ljys;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcqy;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljys;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljyq;->a()Ljys;

    move-result-object v0

    return-object v0
.end method
