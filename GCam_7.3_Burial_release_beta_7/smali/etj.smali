.class public final Letj;
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


# direct methods
.method public constructor <init>(Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Letj;->a:Lpnh;

    iput-object p2, p0, Letj;->b:Lpnh;

    iput-object p3, p0, Letj;->c:Lpnh;

    iput-object p4, p0, Letj;->d:Lpnh;

    iput-object p5, p0, Letj;->e:Lpnh;

    iput-object p6, p0, Letj;->f:Lpnh;

    iput-object p7, p0, Letj;->g:Lpnh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Letj;->a:Lpnh;

    check-cast v0, Ldvk;

    invoke-virtual {v0}, Ldvk;->a()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Letj;->b:Lpnh;

    check-cast v0, Ldvj;

    invoke-virtual {v0}, Ldvj;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Letj;->c:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Llon;

    iget-object v0, p0, Letj;->d:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Llon;

    iget-object v0, p0, Letj;->e:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lfih;

    iget-object v0, p0, Letj;->f:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lchh;

    iget-object v0, p0, Letj;->g:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Leti;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Leti;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Llon;Llon;Lfih;Lchh;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method
