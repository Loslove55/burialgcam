.class public abstract Ljik;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Ljij;
    .locals 2

    new-instance v0, Ljij;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljij;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/graphics/Rect;
.end method

.method public abstract b()I
.end method
