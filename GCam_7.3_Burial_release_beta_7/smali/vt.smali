.class public final Lvt;
.super Ljk;


# instance fields
.field final b:Landroid/support/v7/widget/RecyclerView;

.field public final c:Lvs;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljk;-><init>()V

    iput-object p1, p0, Lvt;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p0, Lvt;->c:Lvs;

    if-nez p1, :cond_0

    new-instance p1, Lvs;

    invoke-direct {p1, p0}, Lvs;-><init>(Lvt;)V

    :goto_0
    iput-object p1, p0, Lvt;->c:Lvs;

    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lko;)V
    .locals 5

    invoke-super {p0, p1, p2}, Ljk;->a(Landroid/view/View;Lko;)V

    invoke-virtual {p0}, Lvt;->a()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lvt;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Luy;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lvt;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Luy;

    move-result-object p1

    iget-object v0, p1, Luy;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Lvg;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mState:Lvo;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Luy;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lko;->a(I)V

    invoke-virtual {p2, v4}, Lko;->b(Z)V

    :cond_1
    iget-object v0, p1, Luy;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Luy;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lko;->a(I)V

    invoke-virtual {p2, v4}, Lko;->b(Z)V

    :cond_3
    invoke-virtual {p1, v1, v2}, Luy;->a(Lvg;Lvo;)I

    move-result v0

    invoke-virtual {p1, v1, v2}, Luy;->b(Lvg;Lvo;)I

    move-result p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Lkm;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-direct {v1, p1}, Lkm;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lko;->a(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method final a()Z
    .locals 1

    iget-object v0, p0, Lvt;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    invoke-super {p0, p1, p2, p3}, Ljk;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lvt;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_9

    iget-object p1, p0, Lvt;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Luy;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lvt;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Luy;

    move-result-object p1

    iget-object v1, p1, Luy;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Lvg;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mState:Lvo;

    if-eqz v1, :cond_8

    const/16 v2, 0x1000

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_0
    nop

    const/4 p2, -0x1

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Luy;->C:I

    invoke-virtual {p1}, Luy;->u()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Luy;->w()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    goto :goto_0

    :cond_1
    nop

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Luy;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p1, Luy;->B:I

    invoke-virtual {p1}, Luy;->t()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Luy;->v()I

    move-result v2

    sub-int/2addr p2, v2

    neg-int p2, p2

    move v3, p2

    move v4, v1

    goto :goto_3

    :cond_2
    goto :goto_2

    :cond_3
    nop

    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p1, Luy;->C:I

    invoke-virtual {p1}, Luy;->u()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Luy;->w()I

    move-result v1

    sub-int/2addr p2, v1

    move v1, p2

    goto :goto_1

    :cond_4
    nop

    const/4 v1, 0x0

    :goto_1
    iget-object p2, p1, Luy;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p1, Luy;->B:I

    invoke-virtual {p1}, Luy;->t()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Luy;->v()I

    move-result v2

    sub-int/2addr p2, v2

    move v3, p2

    move v4, v1

    goto :goto_3

    :cond_5
    nop

    :goto_2
    move v4, v1

    const/4 v3, 0x0

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v2, p1, Luy;->q:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return p3

    :cond_8
    :goto_5
    return v0

    :cond_9
    nop

    return v0

    :cond_a
    return p3
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ljk;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Luy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Luy;

    move-result-object p1

    invoke-virtual {p1, p2}, Luy;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method
