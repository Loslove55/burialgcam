.class public final Lius;
.super Ljava/lang/Object;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(Lmkq;FFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmkq;->a:Lmkq;

    invoke-virtual {p1}, Lmkq;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iput p2, p0, Lius;->a:F

    iput p3, p0, Lius;->b:F

    iput p4, p0, Lius;->c:F

    return-void

    :cond_0
    iput p3, p0, Lius;->a:F

    iput p2, p0, Lius;->b:F

    iput p4, p0, Lius;->c:F

    return-void

    :cond_1
    neg-float p1, p3

    iput p1, p0, Lius;->a:F

    iput p2, p0, Lius;->b:F

    neg-float p1, p4

    iput p1, p0, Lius;->c:F

    return-void
.end method
