.class final Lacg;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lacg;->b:Z

    iput-object p1, p0, Lacg;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lacg;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ladg;->a(Landroid/view/View;F)V

    iget-boolean p1, p0, Lacg;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lacg;->a:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lacg;->a:Landroid/view/View;

    invoke-static {p1}, Lkb;->q(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lacg;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lacg;->b:Z

    iget-object p1, p0, Lacg;->a:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
