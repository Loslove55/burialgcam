.class final Lmz;
.super Ljava/lang/Object;

# interfaces
.implements Loq;


# instance fields
.field final synthetic a:Lnb;


# direct methods
.method public constructor <init>(Lnb;)V
    .locals 0

    iput-object p1, p0, Lmz;->a:Lnb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Los;)V
    .locals 4

    iget-object v0, p0, Lmz;->a:Lnb;

    iget-object v1, v0, Lnb;->c:Landroid/view/Window$Callback;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lnb;->a:Lse;

    invoke-interface {v0}, Lse;->h()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmz;->a:Lnb;

    iget-object v0, v0, Lnb;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmz;->a:Lnb;

    iget-object v0, v0, Lnb;->c:Landroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmz;->a:Lnb;

    iget-object v0, v0, Lnb;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    return-void
.end method

.method public final a(Los;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
