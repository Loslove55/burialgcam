.class public final Lelb;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:D

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lelb;->a:F

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lelb;->b:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lelb;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-wide v0, p0, Lelb;->b:D

    const v2, 0x3e23d70b    # 0.16000001f

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_2

    const-wide v3, 0x3f9999999999999aL    # 0.025

    cmpl-double v5, v0, v3

    if-gtz v5, :cond_1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    iget-boolean v0, p0, Lelb;->c:Z

    if-eqz v0, :cond_0

    const v2, 0x3c23d70b    # 0.010000001f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v2, 0x3b23d70b    # 0.0025000002f

    goto :goto_0

    :cond_2
    nop

    :goto_0
    iget v0, p0, Lelb;->a:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lekl;->a(Z)V

    return-void
.end method
