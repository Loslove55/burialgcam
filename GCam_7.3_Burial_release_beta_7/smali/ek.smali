.class final Lek;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ldq;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Ldq;)V
    .locals 0

    iput-object p1, p0, Lek;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lek;->b:Landroid/view/View;

    iput-object p3, p0, Lek;->c:Ldq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lek;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lek;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lek;->c:Ldq;

    iget-object v0, p1, Ldq;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Ldq;->K:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
