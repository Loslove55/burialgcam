.class public final Lom;
.super Lpc;

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lpg;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/List;

.field final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field d:Landroid/view/View;

.field e:Landroid/view/ViewTreeObserver;

.field f:Z

.field private final h:Landroid/content/Context;

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:Ljava/util/List;

.field private final m:Landroid/view/View$OnAttachStateChangeListener;

.field private final n:Ltz;

.field private o:I

.field private p:I

.field private q:Landroid/view/View;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Lpf;

.field private z:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 1

    invoke-direct {p0}, Lpc;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lom;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lom;->b:Ljava/util/List;

    new-instance v0, Loh;

    invoke-direct {v0, p0}, Loh;-><init>(Lom;)V

    iput-object v0, p0, Lom;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Loi;

    invoke-direct {v0, p0}, Loi;-><init>(Lom;)V

    iput-object v0, p0, Lom;->m:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Lok;

    invoke-direct {v0, p0}, Lok;-><init>(Lom;)V

    iput-object v0, p0, Lom;->n:Ltz;

    const/4 v0, 0x0

    iput v0, p0, Lom;->o:I

    iput v0, p0, Lom;->p:I

    iput-object p1, p0, Lom;->h:Landroid/content/Context;

    iput-object p2, p0, Lom;->q:Landroid/view/View;

    iput p3, p0, Lom;->j:I

    iput-boolean p4, p0, Lom;->k:Z

    iput-boolean v0, p0, Lom;->w:Z

    invoke-direct {p0}, Lom;->h()I

    move-result p2

    iput p2, p0, Lom;->r:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    const p3, 0x7f070017

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lom;->i:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lom;->a:Landroid/os/Handler;

    return-void
.end method

.method private final c(Los;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lom;->h:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Lop;

    iget-boolean v4, v0, Lom;->k:Z

    const v5, 0x7f0e000b

    invoke-direct {v3, v1, v2, v4, v5}, Lop;-><init>(Los;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual/range {p0 .. p0}, Lom;->e()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lom;->w:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    nop

    iput-boolean v5, v3, Lop;->b:Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lom;->e()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lpc;->b(Los;)Z

    move-result v4

    iput-boolean v4, v3, Lop;->b:Z

    :goto_1
    iget-object v4, v0, Lom;->h:Landroid/content/Context;

    iget v6, v0, Lom;->i:I

    invoke-static {v3, v4, v6}, Lom;->a(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v4

    new-instance v6, Lub;

    iget-object v7, v0, Lom;->h:Landroid/content/Context;

    iget v8, v0, Lom;->j:I

    invoke-direct {v6, v7, v8}, Lub;-><init>(Landroid/content/Context;I)V

    iget-object v7, v0, Lom;->n:Ltz;

    iput-object v7, v6, Lub;->a:Ltz;

    iput-object v0, v6, Lty;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v0}, Lty;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v7, v0, Lom;->q:Landroid/view/View;

    iput-object v7, v6, Lty;->l:Landroid/view/View;

    iget v7, v0, Lom;->p:I

    iput v7, v6, Lty;->j:I

    invoke-virtual {v6}, Lty;->k()V

    invoke-virtual {v6}, Lty;->j()V

    invoke-virtual {v6, v3}, Lty;->a(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, v4}, Lty;->d(I)V

    iget v3, v0, Lom;->p:I

    iput v3, v6, Lty;->j:I

    iget-object v3, v0, Lom;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-lez v3, :cond_c

    iget-object v3, v0, Lom;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v7

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lol;

    iget-object v10, v3, Lol;->b:Los;

    invoke-virtual {v10}, Los;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_5

    invoke-virtual {v10, v12}, Los;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    invoke-interface {v13}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    if-ne v1, v14, :cond_3

    goto :goto_4

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    nop

    move-object v13, v8

    :goto_4
    if-eqz v13, :cond_a

    invoke-virtual {v3}, Lol;->a()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    instance-of v12, v11, Landroid/widget/HeaderViewListAdapter;

    if-eqz v12, :cond_6

    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v12

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lop;

    goto :goto_5

    :cond_6
    check-cast v11, Lop;

    nop

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v11}, Lop;->getCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v14, :cond_7

    invoke-virtual {v11, v15}, Lop;->a(I)Lov;

    move-result-object v5

    if-eq v13, v5, :cond_8

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    nop

    const/4 v15, -0x1

    :cond_8
    if-eq v15, v7, :cond_b

    add-int/2addr v15, v12

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v15, v5

    if-ltz v15, :cond_b

    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-ge v15, v5, :cond_9

    invoke-virtual {v10, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_8

    :cond_9
    goto :goto_7

    :cond_a
    nop

    :cond_b
    :goto_7
    move-object v5, v8

    goto :goto_8

    :cond_c
    nop

    move-object v3, v8

    move-object v5, v3

    :goto_8
    if-eqz v5, :cond_13

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v10, v6, Lub;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v9}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v10, v6, Lub;->q:Landroid/widget/PopupWindow;

    move-object v11, v8

    check-cast v11, Landroid/transition/Transition;

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    iget-object v10, v0, Lom;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lol;

    invoke-virtual {v7}, Lol;->a()Landroid/widget/ListView;

    move-result-object v7

    const/4 v10, 0x2

    new-array v10, v10, [I

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v12, v0, Lom;->d:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v12, v0, Lom;->r:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    aget v10, v10, v9

    invoke-virtual {v7}, Landroid/widget/ListView;->getWidth()I

    move-result v7

    add-int/2addr v10, v7

    add-int/2addr v10, v4

    iget v7, v11, Landroid/graphics/Rect;->right:I

    if-gt v10, v7, :cond_e

    goto :goto_9

    :cond_d
    nop

    aget v7, v10, v9

    sub-int/2addr v7, v4

    if-ltz v7, :cond_f

    :cond_e
    nop

    const/4 v13, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v13, 0x1

    :goto_a
    iput v13, v0, Lom;->r:I

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    iput-object v5, v6, Lty;->l:Landroid/view/View;

    iget v7, v0, Lom;->p:I

    const/4 v10, 0x5

    and-int/2addr v7, v10

    if-eq v7, v10, :cond_11

    if-nez v13, :cond_10

    neg-int v4, v4

    goto :goto_b

    :cond_10
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_b

    :cond_11
    if-eqz v13, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    :goto_b
    iput v4, v6, Lty;->g:I

    const/4 v4, 0x1

    iput-boolean v4, v6, Lty;->i:Z

    iput-boolean v4, v6, Lty;->h:Z

    invoke-virtual {v6, v9}, Lty;->a(I)V

    goto :goto_c

    :cond_13
    iget-boolean v4, v0, Lom;->s:Z

    if-eqz v4, :cond_14

    iget v4, v0, Lom;->u:I

    iput v4, v6, Lty;->g:I

    :cond_14
    iget-boolean v4, v0, Lom;->t:Z

    if-eqz v4, :cond_15

    iget v4, v0, Lom;->v:I

    invoke-virtual {v6, v4}, Lty;->a(I)V

    :cond_15
    iget-object v4, v0, Lpc;->g:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Lty;->a(Landroid/graphics/Rect;)V

    :goto_c
    new-instance v4, Lol;

    iget v5, v0, Lom;->r:I

    invoke-direct {v4, v6, v1, v5}, Lol;-><init>(Lub;Los;I)V

    iget-object v5, v0, Lom;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lty;->L()V

    iget-object v4, v6, Lty;->e:Lst;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v3, :cond_17

    iget-boolean v3, v0, Lom;->x:Z

    if-eqz v3, :cond_17

    iget-object v3, v1, Los;->e:Ljava/lang/CharSequence;

    if-nez v3, :cond_16

    goto :goto_d

    :cond_16
    const v3, 0x7f0e0012

    invoke-virtual {v2, v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v1, v1, Los;->e:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v6}, Lty;->L()V

    :cond_17
    :goto_d
    return-void
.end method

.method private final h()I
    .locals 2

    iget-object v0, p0, Lom;->q:Landroid/view/View;

    invoke-static {v0}, Lkb;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final L()V
    .locals 4

    invoke-virtual {p0}, Lom;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lom;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Los;

    invoke-direct {p0, v3}, Lom;->c(Los;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lom;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lom;->q:Landroid/view/View;

    iput-object v0, p0, Lom;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lom;->e:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lom;->e:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_1

    iget-object v1, p0, Lom;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lom;->d:Landroid/view/View;

    iget-object v1, p0, Lom;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    return-void
.end method

.method public final M()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol;

    invoke-virtual {v0}, Lol;->a()Landroid/widget/ListView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lom;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lom;->o:I

    iget-object v0, p0, Lom;->q:Landroid/view/View;

    invoke-static {v0}, Lkb;->f(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Ljo;->a(II)I

    move-result p1

    iput p1, p0, Lom;->p:I

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lom;->q:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lom;->q:Landroid/view/View;

    iget v0, p0, Lom;->o:I

    invoke-static {p1}, Lkb;->f(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Ljo;->a(II)I

    move-result p1

    iput p1, p0, Lom;->p:I

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lom;->z:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final a(Los;)V
    .locals 1

    iget-object v0, p0, Lom;->h:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Los;->a(Lpg;Landroid/content/Context;)V

    invoke-virtual {p0}, Lom;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lom;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lom;->c(Los;)V

    return-void
.end method

.method public final a(Los;Z)V
    .locals 5

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lol;

    iget-object v3, v3, Lol;->b:Los;

    if-eq p1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    const/4 v2, -0x1

    :cond_1
    if-ltz v2, :cond_a

    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol;

    iget-object v0, v0, Lol;->b:Los;

    invoke-virtual {v0, v1}, Los;->a(Z)V

    :cond_2
    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol;

    iget-object v2, v0, Lol;->b:Los;

    invoke-virtual {v2, p0}, Los;->b(Lpg;)V

    iget-boolean v2, p0, Lom;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Lol;->a:Lub;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, v2, Lub;->q:Landroid/widget/PopupWindow;

    move-object v4, v3

    check-cast v4, Landroid/transition/Transition;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    iget-object v2, v0, Lol;->a:Lub;

    iget-object v2, v2, Lty;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_3
    iget-object v0, v0, Lol;->a:Lub;

    invoke-virtual {v0}, Lty;->d()V

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v2, p0, Lom;->b:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lol;

    iget v2, v2, Lol;->c:I

    iput v2, p0, Lom;->r:I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lom;->h()I

    move-result v2

    iput v2, p0, Lom;->r:I

    :goto_1
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lom;->d()V

    iget-object p2, p0, Lom;->y:Lpf;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    nop

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lpf;->a(Los;Z)V

    :goto_2
    iget-object p1, p0, Lom;->e:Landroid/view/ViewTreeObserver;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lom;->e:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lom;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_7
    iput-object v3, p0, Lom;->e:Landroid/view/ViewTreeObserver;

    :goto_3
    iget-object p1, p0, Lom;->d:Landroid/view/View;

    iget-object p2, p0, Lom;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lom;->z:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void

    :cond_8
    if-eqz p2, :cond_9

    iget-object p1, p0, Lom;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lol;

    iget-object p1, p1, Lol;->b:Los;

    invoke-virtual {p1, v1}, Los;->a(Z)V

    :cond_9
    return-void

    :cond_a
    return-void
.end method

.method public final a(Lpf;)V
    .locals 0

    iput-object p1, p0, Lom;->y:Lpf;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lom;->w:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lpo;)Z
    .locals 7

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lol;

    add-int/lit8 v3, v3, 0x1

    iget-object v6, v5, Lol;->b:Los;

    if-ne p1, v6, :cond_0

    invoke-virtual {v5}, Lol;->a()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v4

    :cond_1
    invoke-virtual {p1}, Los;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lom;->a(Los;)V

    iget-object v0, p0, Lom;->y:Lpf;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lpf;->a(Los;)Z

    :cond_2
    return v4

    :cond_3
    return v2
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lol;

    invoke-virtual {v3}, Lol;->a()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-static {v3}, Lom;->a(Landroid/widget/ListAdapter;)Lop;

    move-result-object v3

    invoke-virtual {v3}, Lop;->notifyDataSetChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lom;->s:Z

    iput p1, p0, Lom;->u:I

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lom;->x:Z

    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lom;->t:Z

    iput p1, p0, Lom;->v:I

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lom;->b:Ljava/util/List;

    new-array v2, v0, [Lol;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lol;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    iget-object v3, v2, Lol;->a:Lub;

    invoke-virtual {v3}, Lty;->e()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lol;->a:Lub;

    invoke-virtual {v2}, Lty;->d()V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol;

    iget-object v0, v0, Lol;->a:Lub;

    invoke-virtual {v0}, Lty;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onDismiss()V
    .locals 5

    iget-object v0, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lom;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lol;

    iget-object v4, v3, Lol;->a:Lub;

    invoke-virtual {v4}, Lty;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    nop

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, v3, Lol;->b:Los;

    invoke-virtual {v0, v1}, Los;->a(Z)V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lom;->d()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
