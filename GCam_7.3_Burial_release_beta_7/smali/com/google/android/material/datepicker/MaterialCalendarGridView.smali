.class public final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Luo;->c()Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnuf;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b0068

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusLeftId(I)V

    const p1, 0x7f0b0079

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusRightId(I)V

    :cond_0
    new-instance p1, Lnue;

    invoke-direct {p1}, Lnue;-><init>()V

    invoke-static {p0, p1}, Lkb;->a(Landroid/view/View;Ljk;)V

    return-void
.end method


# virtual methods
.method public final a()Lnui;
    .locals 1

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lnui;

    return-object v0
.end method

.method public final bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object v0

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object v0

    invoke-virtual {v0}, Lnui;->notifyDataSetChanged()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object p1

    iget-object v0, p1, Lnui;->c:Lntq;

    iget-object v1, p1, Lnui;->d:Lntp;

    invoke-virtual {p1}, Lnui;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lnui;->a(I)Ljava/lang/Long;

    invoke-virtual {p1}, Lnui;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Lnui;->a(I)Ljava/lang/Long;

    invoke-interface {v0}, Lntq;->b()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lja;

    iget-object v0, v0, Lja;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_2

    const/16 p1, 0x21

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object p1

    invoke-virtual {p1}, Lnui;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    return-void

    :cond_0
    const/16 p1, 0x82

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object p1

    invoke-virtual {p1}, Lnui;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object v1

    invoke-virtual {v1}, Lnui;->a()I

    move-result v1

    if-ge p2, v1, :cond_1

    const/16 p2, 0x13

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object p1

    invoke-virtual {p1}, Lnui;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    return v2

    :cond_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    instance-of v0, p1, Lnui;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lnui;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%1$s must have its Adapter set to a %2$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object v0

    invoke-virtual {v0}, Lnui;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lnui;

    move-result-object p1

    invoke-virtual {p1}, Lnui;->a()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    return-void
.end method
