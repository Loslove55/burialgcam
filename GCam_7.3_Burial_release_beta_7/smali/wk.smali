.class public final Lwk;
.super Ljava/lang/Object;

# interfaces
.implements Lpg;


# instance fields
.field a:Los;

.field public b:Lov;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Los;)V
    .locals 1

    iget-object p1, p0, Lwk;->a:Los;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lwk;->b:Lov;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Los;->b(Lov;)Z

    :cond_0
    iput-object p2, p0, Lwk;->a:Los;

    return-void
.end method

.method public final a(Los;Z)V
    .locals 0

    return-void
.end method

.method public final a(Lpf;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lov;)Z
    .locals 4

    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    instance-of v1, v0, Lnr;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lnr;

    invoke-interface {v0}, Lnr;->b()V

    :goto_0
    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lwk;->b:Lov;

    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lov;->e(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lpo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lwk;->b:Lov;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwk;->a:Los;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Los;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lwk;->a:Los;

    invoke-virtual {v2, v1}, Los;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lwk;->b:Lov;

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwk;->b:Lov;

    invoke-virtual {p0, v0}, Lwk;->a(Lov;)Z

    :cond_1
    return-void
.end method

.method public final b(Lov;)Z
    .locals 7

    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    const v2, 0x800003

    const/4 v3, 0x2

    if-nez v1, :cond_0

    new-instance v1, Lqx;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f040345

    invoke-direct {v1, v4, v5, v6}, Lqx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/support/v7/widget/Toolbar;->o()Lwl;

    move-result-object v1

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->m:I

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v4, v2

    iput v4, v1, Lwl;->a:I

    iput v3, v1, Lwl;->b:I

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    new-instance v4, Lwj;

    invoke-direct {v4, v0}, Lwj;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_2

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Lov;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    iput-object p1, p0, Lwk;->b:Lov;

    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_4

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-static {}, Landroid/support/v7/widget/Toolbar;->o()Lwl;

    move-result-object v0

    iget-object v1, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget v4, v1, Landroid/support/v7/widget/Toolbar;->m:I

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v2, v4

    iput v2, v0, Lwl;->a:I

    iput v3, v0, Lwl;->b:I

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_6

    iget-object v0, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lov;->e(Z)V

    iget-object p1, p0, Lwk;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    instance-of v1, p1, Lnr;

    if-eqz v1, :cond_5

    check-cast p1, Lnr;

    invoke-interface {p1}, Lnr;->a()V

    :cond_5
    return v0

    :cond_6
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lwl;

    iget v4, v4, Lwl;->b:I

    if-ne v4, v3, :cond_8

    :cond_7
    goto :goto_2

    :cond_8
    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eq v2, v4, :cond_7

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
