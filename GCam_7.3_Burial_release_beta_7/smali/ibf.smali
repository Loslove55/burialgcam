.class final Libf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Libm;


# direct methods
.method public constructor <init>(Libm;)V
    .locals 0

    iput-object p1, p0, Libf;->a:Libm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-eq p2, p6, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, p7, :cond_1

    if-ne p4, p8, :cond_1

    if-ne p5, p9, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Libf;->a:Libm;

    invoke-virtual {p1}, Libm;->a()V

    return-void
.end method
