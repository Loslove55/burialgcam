.class public final Lqp;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lqv;

.field private c:I

.field private d:Lwe;

.field private e:Lwe;

.field private f:Lwe;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lqp;->c:I

    iput-object p1, p0, Lqp;->a:Landroid/view/View;

    invoke-static {}, Lqv;->b()Lqv;

    move-result-object p1

    iput-object p1, p0, Lqp;->b:Lqv;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lqp;->e:Lwe;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lwe;->a:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(I)V
    .locals 2

    iput p1, p0, Lqp;->c:I

    iget-object v0, p0, Lqp;->b:Lqv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lqp;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lqv;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lqp;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lqp;->c()V

    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lqp;->e:Lwe;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lwe;

    invoke-direct {v0}, Lwe;-><init>()V

    iput-object v0, p0, Lqp;->e:Lwe;

    :goto_0
    iget-object v0, p0, Lqp;->e:Lwe;

    iput-object p1, v0, Lwe;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lwe;->d:Z

    invoke-virtual {p0}, Lqp;->c()V

    return-void
.end method

.method public final a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lqp;->e:Lwe;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lwe;

    invoke-direct {v0}, Lwe;-><init>()V

    iput-object v0, p0, Lqp;->e:Lwe;

    :goto_0
    iget-object v0, p0, Lqp;->e:Lwe;

    iput-object p1, v0, Lwe;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lwe;->c:Z

    invoke-virtual {p0}, Lqp;->c()V

    return-void
.end method

.method final a(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lqp;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lnk;->y:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lwg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lwg;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v2}, Lwg;->f(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2, v0}, Lwg;->f(II)I

    move-result p2

    iput p2, p0, Lqp;->c:I

    iget-object p2, p0, Lqp;->b:Lqv;

    iget-object v1, p0, Lqp;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lqp;->c:I

    invoke-virtual {p2, v1, v2}, Lqv;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lqp;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lwg;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lqp;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Lwg;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {v1, p2}, Lkb;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lwg;->f(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lqp;->a:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Lwg;->a(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lsq;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-static {v1, p2}, Lkb;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p1}, Lwg;->a()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lwg;->a()V

    throw p2
.end method

.method public final b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lqp;->e:Lwe;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lwe;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final b(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lqp;->d:Lwe;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lwe;

    invoke-direct {v0}, Lwe;-><init>()V

    iput-object v0, p0, Lqp;->d:Lwe;

    :goto_0
    iget-object v0, p0, Lqp;->d:Lwe;

    iput-object p1, v0, Lwe;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lwe;->d:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lqp;->d:Lwe;

    :goto_1
    invoke-virtual {p0}, Lqp;->c()V

    return-void
.end method

.method final c()V
    .locals 4

    iget-object v0, p0, Lqp;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lqp;->d:Lwe;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lqp;->f:Lwe;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lwe;

    invoke-direct {v1}, Lwe;-><init>()V

    iput-object v1, p0, Lqp;->f:Lwe;

    :goto_0
    iget-object v1, p0, Lqp;->f:Lwe;

    const/4 v2, 0x0

    iput-object v2, v1, Lwe;->a:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lwe;->d:Z

    iput-object v2, v1, Lwe;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v3, v1, Lwe;->c:Z

    iget-object v2, p0, Lqp;->a:Landroid/view/View;

    invoke-static {v2}, Lkb;->s(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iput-boolean v3, v1, Lwe;->d:Z

    iput-object v2, v1, Lwe;->a:Landroid/content/res/ColorStateList;

    :cond_2
    iget-object v2, p0, Lqp;->a:Landroid/view/View;

    invoke-static {v2}, Lkb;->t(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-boolean v3, v1, Lwe;->c:Z

    iput-object v2, v1, Lwe;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_3
    iget-boolean v2, v1, Lwe;->d:Z

    if-eqz v2, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    iget-boolean v2, v1, Lwe;->c:Z

    if-eqz v2, :cond_5

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lqp;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lqv;->a(Landroid/graphics/drawable/Drawable;Lwe;[I)V

    return-void

    :cond_5
    :goto_3
    iget-object v1, p0, Lqp;->e:Lwe;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lqp;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lqv;->a(Landroid/graphics/drawable/Drawable;Lwe;[I)V

    return-void

    :cond_6
    iget-object v1, p0, Lqp;->d:Lwe;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lqp;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lqv;->a(Landroid/graphics/drawable/Drawable;Lwe;[I)V

    return-void

    :cond_7
    return-void
.end method

.method final d()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lqp;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lqp;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lqp;->c()V

    return-void
.end method
