.class final Ljvq;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Ljvr;


# direct methods
.method public constructor <init>(Ljvr;)V
    .locals 0

    iput-object p1, p0, Ljvq;->a:Ljvr;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ljvq;->a:Ljvr;

    sget v0, Ljvr;->n:I

    const/4 v0, 0x1

    iput v0, p1, Ljvr;->m:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljvr;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ljvq;->a:Ljvr;

    sget v0, Ljvr;->n:I

    const/4 v0, 0x1

    iput v0, p1, Ljvr;->m:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljvr;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ljvq;->a:Ljvr;

    sget v0, Ljvr;->n:I

    iget v0, p1, Ljvr;->f:I

    iput v0, p1, Ljvr;->d:I

    const/4 v0, 0x3

    iput v0, p1, Ljvr;->m:I

    return-void
.end method
