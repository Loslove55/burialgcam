.class public final Lbjw;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;

.field private final b:Lpnh;

.field private final c:Lpnh;

.field private final d:Lpnh;

.field private final e:Lpnh;

.field private final f:Lpnh;

.field private final g:Lpnh;

.field private final h:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbjw;->a:Lpnh;

    iput-object p2, p0, Lbjw;->b:Lpnh;

    iput-object p3, p0, Lbjw;->c:Lpnh;

    iput-object p4, p0, Lbjw;->d:Lpnh;

    iput-object p5, p0, Lbjw;->e:Lpnh;

    iput-object p6, p0, Lbjw;->f:Lpnh;

    iput-object p7, p0, Lbjw;->g:Lpnh;

    iput-object p8, p0, Lbjw;->h:Lpnh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 13

    invoke-static {}, Ldvm;->a()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lbjw;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lbjp;

    iget-object v0, p0, Lbjw;->b:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Llvo;

    iget-object v0, p0, Lbjw;->c:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lmkk;

    invoke-static {}, Lcqr;->a()Llvl;

    move-result-object v5

    iget-object v0, p0, Lbjw;->d:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvf;

    iget-object v2, p0, Lbjw;->e:Lpnh;

    invoke-interface {v2}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lbjw;->f:Lpnh;

    invoke-interface {v2}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/concurrent/Semaphore;

    iget-object v2, p0, Lbjw;->g:Lpnh;

    invoke-interface {v2}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Loye;

    iget-object v2, p0, Lbjw;->h:Lpnh;

    check-cast v2, Ldxk;

    invoke-virtual {v2}, Ldxk;->a()Lbfh;

    move-result-object v11

    new-instance v12, Lbjv;

    iget-object v0, v0, Ldvf;->a:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-static {v0, v2}, Ldvf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    move-object v0, v12

    move-object v2, v9

    invoke-direct/range {v0 .. v8}, Lbjv;-><init>(Landroid/os/Handler;Lbjp;Llvo;Lmkk;Llvl;Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v11}, Lbfh;->c()Llkx;

    move-result-object v0

    invoke-interface {v0, v9}, Llkx;->a(Llum;)Llum;

    invoke-virtual {v10, v12}, Loye;->b(Ljava/lang/Object;)Z

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v12, v0}, Lcqy;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjv;

    return-object v0
.end method
