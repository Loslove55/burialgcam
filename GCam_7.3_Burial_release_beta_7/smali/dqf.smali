.class public final Ldqf;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;

.field private final b:Lpnh;

.field private final c:Lpnh;

.field private final d:Lpnh;

.field private final e:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqf;->a:Lpnh;

    iput-object p2, p0, Ldqf;->b:Lpnh;

    iput-object p3, p0, Ldqf;->c:Lpnh;

    iput-object p4, p0, Ldqf;->d:Lpnh;

    iput-object p5, p0, Ldqf;->e:Lpnh;

    return-void
.end method


# virtual methods
.method public final a()Ldqe;
    .locals 7

    iget-object v0, p0, Ldqf;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljqn;

    iget-object v0, p0, Ldqf;->b:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, p0, Ldqf;->c:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lgpq;

    iget-object v0, p0, Ldqf;->d:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ldrp;

    iget-object v0, p0, Ldqf;->e:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lmqf;

    new-instance v0, Ldqe;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldqe;-><init>(Ljqn;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgpq;Ldrp;Lmqf;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldqf;->a()Ldqe;

    move-result-object v0

    return-object v0
.end method
