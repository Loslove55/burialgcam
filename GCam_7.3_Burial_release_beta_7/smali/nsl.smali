.class final Lnsl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnsm;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lnsm;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lnsl;->a:Lnsm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnsl;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lnsl;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnsl;->a:Lnsm;

    iget-object v0, v0, Lnsm;->b:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnsl;->a:Lnsm;

    iget-object v1, p0, Lnsl;->b:Landroid/view/View;

    iget-object v2, v0, Lnsm;->b:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    invoke-virtual {v0, v1, v2, v3, v4}, Lnsm;->a(Landroid/view/View;III)V

    iget-object v0, p0, Lnsl;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lkb;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnsl;->a:Lnsm;

    iget-object v1, p0, Lnsl;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnsm;->h(Landroid/view/View;)V

    :cond_1
    return-void
.end method
