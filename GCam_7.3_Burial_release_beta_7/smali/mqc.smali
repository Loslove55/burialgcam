.class final Lmqc;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lmqd;


# direct methods
.method public constructor <init>(Lmqd;)V
    .locals 0

    iput-object p1, p0, Lmqc;->a:Lmqd;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmqc;->a:Lmqd;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lmqd;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmqc;->a:Lmqd;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lmqd;->setVisibility(I)V

    return-void
.end method
