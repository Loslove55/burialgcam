.class final Ljvn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Ljvr;


# direct methods
.method public constructor <init>(Ljvr;)V
    .locals 0

    iput-object p1, p0, Ljvn;->a:Ljvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Ljvn;->a:Ljvr;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Ljvr;->e:F

    iget-object p1, p0, Ljvn;->a:Ljvr;

    iget-object v0, p1, Ljvr;->c:Landroid/graphics/Paint;

    iget p1, p1, Ljvr;->e:F

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Ljvn;->a:Ljvr;

    invoke-virtual {p1}, Ljvr;->invalidate()V

    return-void
.end method
