.class final Lics;
.super Landroid/view/View$AccessibilityDelegate;


# instance fields
.field final synthetic a:Lidb;


# direct methods
.method public constructor <init>(Lidb;)V
    .locals 0

    iput-object p1, p0, Lics;->a:Lidb;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lics;->a:Lidb;

    iget-object v0, v0, Lidb;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lics;->a:Lidb;

    iget-object v0, v0, Lidb;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lics;->a:Lidb;

    iput-boolean v2, v0, Lidb;->m:Z

    iget-boolean v1, v0, Lidb;->l:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lidb;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lics;->a:Lidb;

    iget-boolean v1, v0, Lidb;->m:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lidb;->m:Z

    iput-boolean v2, v0, Lidb;->l:Z

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
