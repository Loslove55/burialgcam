.class final synthetic Ljsp;
.super Ljava/lang/Object;

# interfaces
.implements Llum;


# instance fields
.field private final a:Ljsr;

.field private final b:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Ljsr;Landroid/view/ViewTreeObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljsp;->a:Ljsr;

    iput-object p2, p0, Ljsp;->b:Landroid/view/ViewTreeObserver;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Ljsp;->a:Ljsr;

    iget-object v1, p0, Ljsp;->b:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
