.class final Lrm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lro;


# direct methods
.method public constructor <init>(Lro;)V
    .locals 0

    iput-object p1, p0, Lrm;->a:Lro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lrm;->a:Lro;

    iget-object v1, v0, Lro;->d:Lrs;

    invoke-static {v1}, Lkb;->z(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lro;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrm;->a:Lro;

    invoke-virtual {v0}, Lro;->g()V

    iget-object v0, p0, Lrm;->a:Lro;

    invoke-static {v0}, Lro;->a(Lro;)V

    return-void

    :cond_0
    iget-object v0, p0, Lrm;->a:Lro;

    invoke-virtual {v0}, Lty;->d()V

    return-void
.end method
