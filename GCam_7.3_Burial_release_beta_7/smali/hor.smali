.class Lhor;
.super Lhop;


# instance fields
.field private a:Landroid/animation/Animator;

.field final synthetic b:Lhow;


# direct methods
.method public constructor <init>(Lhow;)V
    .locals 0

    iput-object p1, p0, Lhor;->b:Lhow;

    invoke-direct {p0}, Lhop;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lhor;->b:Lhow;

    iget-object v0, v0, Lhow;->g:Lpmj;

    invoke-interface {v0}, Lpmj;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpc;

    iget-object v1, p0, Lhor;->b:Lhow;

    invoke-virtual {v1}, Lhow;->i()Z

    move-result v1

    invoke-interface {v0, v1}, Lhpc;->b(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lhor;->a:Landroid/animation/Animator;

    new-instance v1, Lhoq;

    invoke-direct {v1, p0}, Lhoq;-><init>(Lhor;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lhor;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lhor;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhor;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lhor;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method
