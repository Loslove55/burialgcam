.class public final Laar;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public final c:Laan;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Laar;->a:F

    new-instance v0, Laan;

    invoke-direct {v0}, Laan;-><init>()V

    iput-object v0, p0, Laar;->c:Laan;

    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Laar;->b:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
