.class public final Laab;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public a:Lzy;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Z

.field public n:Z

.field public final o:Landroid/graphics/Rect;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laab;->b:Z

    iput v0, p0, Laab;->c:I

    iput v0, p0, Laab;->d:I

    const/4 v1, -0x1

    iput v1, p0, Laab;->e:I

    iput v1, p0, Laab;->f:I

    iput v0, p0, Laab;->g:I

    iput v0, p0, Laab;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laab;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Laab;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Laab;->b:Z

    iput p1, p0, Laab;->c:I

    iput p1, p0, Laab;->d:I

    const/4 v0, -0x1

    iput v0, p0, Laab;->e:I

    iput v0, p0, Laab;->f:I

    iput p1, p0, Laab;->g:I

    iput p1, p0, Laab;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Laab;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laab;->b:Z

    iput v0, p0, Laab;->c:I

    iput v0, p0, Laab;->d:I

    const/4 v1, -0x1

    iput v1, p0, Laab;->e:I

    iput v1, p0, Laab;->f:I

    iput v0, p0, Laab;->g:I

    iput v0, p0, Laab;->h:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Laab;->o:Landroid/graphics/Rect;

    sget-object v2, Lzv;->b:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Laab;->c:I

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Laab;->f:I

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Laab;->d:I

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Laab;->e:I

    const/4 v1, 0x5

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Laab;->g:I

    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Laab;->h:I

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Laab;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lzy;

    move-result-object p1

    iput-object p1, p0, Laab;->a:Lzy;

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Laab;->a:Lzy;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lzy;->a(Laab;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Laab;->b:Z

    iput p1, p0, Laab;->c:I

    iput p1, p0, Laab;->d:I

    const/4 v0, -0x1

    iput v0, p0, Laab;->e:I

    iput v0, p0, Laab;->f:I

    iput p1, p0, Laab;->g:I

    iput p1, p0, Laab;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Laab;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Laab;->b:Z

    iput p1, p0, Laab;->c:I

    iput p1, p0, Laab;->d:I

    const/4 v0, -0x1

    iput v0, p0, Laab;->e:I

    iput v0, p0, Laab;->f:I

    iput p1, p0, Laab;->g:I

    iput p1, p0, Laab;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Laab;->o:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laab;->n:Z

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Laab;->q:Z

    return-void

    :cond_1
    iput-boolean p2, p0, Laab;->p:Z

    return-void
.end method

.method public final a(Lzy;)V
    .locals 1

    iget-object v0, p0, Laab;->a:Lzy;

    if-eq v0, p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lzy;->a()V

    :goto_0
    iput-object p1, p0, Laab;->a:Lzy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Laab;->b:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lzy;->a(Laab;)V

    return-void

    :cond_1
    return-void
.end method

.method public final a(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Laab;->q:Z

    return p1

    :cond_1
    iget-boolean p1, p0, Laab;->p:Z

    return p1
.end method
