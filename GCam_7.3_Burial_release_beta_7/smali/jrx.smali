.class final Ljrx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field final a:Ljta;

.field public final b:Loye;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/view/View;III)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Loye;->f()Loye;

    move-result-object v0

    iput-object v0, p0, Ljrx;->b:Loye;

    invoke-static {p1}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljta;

    invoke-direct {v1, v0}, Ljta;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljta;->setWillNotDraw(Z)V

    iget-object v3, v1, Ljta;->b:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Ljta;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v3, Ljss;

    invoke-direct {v3, v1}, Ljss;-><init>(Ljta;)V

    invoke-virtual {v1, v3}, Ljta;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljst;

    invoke-direct {v3, v1}, Ljst;-><init>(Ljta;)V

    iput-object v3, v1, Ljta;->t:Lmoc;

    const-string v3, "display"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iget-object v5, v1, Ljta;->w:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, v1, Ljta;->v:Ljava/util/List;

    new-instance v5, Ljsu;

    invoke-direct {v5, v3, v1}, Ljsu;-><init>(Landroid/hardware/display/DisplayManager;Ljta;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Ljrx;->a:Ljta;

    iput-object p1, v1, Ljta;->g:Landroid/view/View;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Ljta;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Ljta;->addView(Landroid/view/View;)V

    invoke-static {p2}, Ljrx;->a(I)Z

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p1, :cond_4

    iget-object p1, p0, Ljrx;->a:Ljta;

    new-array v0, v1, [I

    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {p1}, Ljrx;->a(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p3}, Ljrx;->a(Landroid/view/View;)I

    move-result v5

    if-eq p2, v4, :cond_2

    sub-int/2addr v3, v5

    aget v0, v0, v4

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_0

    goto :goto_2

    :cond_0
    if-ne p2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_3

    :cond_2
    aget v0, v0, v4

    if-ge p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    const/4 p2, 0x2

    goto :goto_3

    :cond_4
    iget-object p1, p0, Ljrx;->a:Ljta;

    invoke-static {p2}, Ljrx;->a(I)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {p2, p3}, Ljrx;->a(ILandroid/view/View;)I

    move-result v3

    new-array v1, v1, [I

    invoke-virtual {p3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {p1}, Ljrx;->b(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p3}, Ljrx;->b(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x5

    if-eq v3, v7, :cond_5

    sub-int/2addr v5, v6

    aget v1, v1, v2

    sub-int/2addr v5, v1

    if-lt p1, v5, :cond_7

    goto :goto_1

    :cond_5
    nop

    aget v1, v1, v2

    if-ge p1, v1, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    if-ne p2, v0, :cond_8

    const/4 p2, 0x4

    :cond_7
    :goto_2
    goto :goto_3

    :cond_8
    const/4 p2, 0x3

    :goto_3
    iget-object p1, p0, Ljrx;->a:Ljta;

    iput-object p3, p1, Ljta;->i:Landroid/view/View;

    iget-object p3, p1, Ljta;->i:Landroid/view/View;

    if-eqz p3, :cond_b

    iget-object v0, p1, Ljta;->a:[I

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p3, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_4

    :cond_9
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_4
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    goto :goto_5

    :cond_a
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    :goto_5
    new-instance v3, Landroid/graphics/Rect;

    aget v2, v0, v2

    aget v0, v0, v4

    add-int/2addr v1, v2

    add-int/2addr p3, v0

    invoke-direct {v3, v2, v0, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p1, Ljta;->j:Landroid/graphics/Rect;

    :cond_b
    iput p2, p1, Ljta;->h:I

    iput p4, p1, Ljta;->k:I

    iput p5, p1, Ljta;->l:I

    iput p6, p1, Ljta;->m:I

    invoke-virtual {p1}, Ljta;->a()I

    return-void
.end method

.method static a(ILandroid/view/View;)I
    .locals 4

    invoke-static {p1}, Lkb;->f(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    if-eq p1, v0, :cond_3

    return v2

    :cond_3
    return v3

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method private static a(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static b(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Ljrx;->a:Ljta;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljta;->a(Z)V

    iget-object v0, p0, Ljrx;->a:Ljta;

    invoke-virtual {v0}, Ljta;->close()V

    :cond_0
    iget-object v0, p0, Ljrx;->b:Loye;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loye;->b(Ljava/lang/Object;)Z

    return-void
.end method
