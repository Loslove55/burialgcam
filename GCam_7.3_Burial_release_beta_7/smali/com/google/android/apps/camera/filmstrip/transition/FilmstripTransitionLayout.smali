.class public Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;
.super Landroid/widget/FrameLayout;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Landroid/animation/ValueAnimator;

.field public final c:Landroid/animation/ValueAnimator;

.field public d:Z

.field public e:Z

.field public f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

.field public g:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field public h:Lbkn;

.field public i:Z

.field public j:Ldbx;

.field private k:Lbkn;

.field private final l:Lmon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FSTransLayout"

    invoke-static {v0}, Lijd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->d:Z

    iput-boolean p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->h:Lbkn;

    iput-object p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->k:Lbkn;

    invoke-static {}, Lmon;->a()Lmon;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->l:Lmon;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->i:Z

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b(F)V

    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 p2, 0x2

    new-array v0, p2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

    new-instance v3, Ldbt;

    invoke-direct {v3, p0}, Ldbt;-><init>(Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

    new-instance v3, Ldbu;

    invoke-direct {v3, p0}, Ldbu;-><init>(Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Ldbv;

    invoke-direct {p2, p0}, Ldbv;-><init>(Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Ldbw;

    invoke-direct {p2, p0}, Ldbw;-><init>(Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->k:Lbkn;

    return-void
.end method


# virtual methods
.method public final a()Ldby;
    .locals 13

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->g:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-static {v0}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/util/SizeF;

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->g:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getThumbnailFinalDiameter()F

    move-result v6

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->g:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-static {v0}, Lkac;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->g:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-static {v1}, Lkac;->b(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->g:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getRippleRingMaxDiameterDp()F

    move-result v3

    int-to-float v0, v0

    int-to-float v1, v1

    new-instance v5, Landroid/graphics/RectF;

    add-float v4, v0, v3

    add-float/2addr v3, v1

    invoke-direct {v5, v0, v1, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Ldby;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljzk;->a(Landroid/view/View;)[I

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    const/4 v7, 0x0

    aget v8, v3, v7

    int-to-float v9, v8

    const/4 v10, 0x1

    aget v11, v3, v10

    int-to-float v11, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v8, v12

    int-to-float v8, v8

    aget v3, v3, v10

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v4, v9, v11, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v8, Landroid/graphics/RectF;

    iget v1, v3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->l:Lmon;

    iget-boolean v1, v1, Lmon;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljzk;->a(Landroid/view/View;)[I

    move-result-object v1

    aget v3, v1, v7

    if-nez v3, :cond_0

    aget v1, v1, v10

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljzk;->a(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v10, :cond_1

    aget v1, v1, v10

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v9

    add-int/2addr v1, v9

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    nop

    aget v1, v1, v7

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v9

    add-int/2addr v1, v9

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    move v7, v1

    const/4 v1, 0x0

    :goto_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v7, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v1, v3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v8, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_2
    move-object v1, v0

    move-object v3, v4

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Ldby;-><init>(Landroid/util/SizeF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method public final a(F)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->j:Ldbx;

    invoke-static {v0}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->j:Ldbx;

    invoke-virtual {v0, p1}, Ldbx;->a(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleX(F)V

    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleY(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->j:Ldbx;

    invoke-virtual {v0, p1}, Ldbx;->b(F)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->j:Ldbx;

    invoke-virtual {v0, p1}, Ldbx;->c(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->a(F)V

    invoke-static {p1}, Ldbx;->d(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b(F)V

    return-void
.end method

.method public final b(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b01ce

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    iput-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    return-void
.end method
