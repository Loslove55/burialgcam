.class public final Ldby;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Landroid/graphics/PointF;

.field private final d:Landroid/graphics/PointF;

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Landroid/util/SizeF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FilmstripTransitionTransformBuilder"

    const-string v1, "Expected that the photos target area is contained in the camera window area."

    invoke-static {v0, v1}, Lijd;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    new-instance p3, Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {p3, v1, v2}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p3}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {p3}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    div-float v4, p2, v0

    div-float v5, v2, v3

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    div-float v3, v2, p2

    :goto_0
    iput v3, p0, Ldby;->a:F

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    cmpg-float v2, p2, v0

    if-ltz v2, :cond_2

    div-float p2, p5, v0

    goto :goto_1

    :cond_2
    div-float p2, p5, p2

    :goto_1
    iput p2, p0, Ldby;->b:F

    iget p2, p0, Ldby;->a:F

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    invoke-virtual {p3}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-virtual {p3}, Landroid/util/SizeF;->getHeight()F

    move-result p3

    div-float v4, v3, p3

    div-float v5, v0, v2

    cmpl-float v6, v5, v4

    if-gtz v6, :cond_3

    mul-float v6, p3, v5

    move v7, v6

    move v6, p3

    goto :goto_2

    :cond_3
    div-float v6, v3, v5

    nop

    move v7, v3

    :goto_2
    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v4, v5, v4

    if-gtz v4, :cond_4

    sub-float/2addr v3, v7

    div-float/2addr v3, v9

    move v8, v3

    const/4 p3, 0x0

    goto :goto_3

    :cond_4
    sub-float/2addr p3, v6

    div-float/2addr p3, v9

    nop

    nop

    :goto_3
    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr p3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_5

    sub-float/2addr v7, v0

    div-float/2addr v7, v9

    add-float/2addr v8, v7

    sub-float/2addr v6, v2

    div-float/2addr v6, v9

    add-float/2addr p3, v6

    :cond_5
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v8, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Ldby;->c:Landroid/graphics/PointF;

    iget p2, p0, Ldby;->b:F

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p3

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    iget v2, p4, Landroid/graphics/RectF;->left:F

    iget v3, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p4

    sub-float/2addr p4, p5

    div-float/2addr p4, v9

    add-float/2addr v2, p4

    add-float/2addr v3, p4

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_6

    sub-float p2, p5, p3

    div-float/2addr p2, v9

    add-float/2addr v2, p2

    sub-float/2addr p5, v0

    div-float/2addr p5, v9

    add-float/2addr v3, p5

    :cond_6
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Ldby;->d:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    div-float/2addr p2, v9

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p3

    div-float/2addr p3, v9

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p0, Ldby;->e:F

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    div-float/2addr p2, v9

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    div-float/2addr p1, v9

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Ldby;->f:F

    return-void
.end method


# virtual methods
.method public final a()Ldbx;
    .locals 8

    new-instance v7, Ldbx;

    iget v1, p0, Ldby;->a:F

    iget v2, p0, Ldby;->b:F

    iget-object v3, p0, Ldby;->c:Landroid/graphics/PointF;

    iget-object v4, p0, Ldby;->d:Landroid/graphics/PointF;

    iget v5, p0, Ldby;->e:F

    iget v6, p0, Ldby;->f:F

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ldbx;-><init>(FFLandroid/graphics/PointF;Landroid/graphics/PointF;FF)V

    return-object v7
.end method
