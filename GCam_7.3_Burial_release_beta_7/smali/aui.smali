.class public final Laui;
.super Ljava/lang/Object;

# interfaces
.implements Laow;
.implements Laor;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lapg;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lapg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Ldfb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Laui;->a:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    invoke-static {p2, p1}, Ldfb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapg;

    iput-object p1, p0, Laui;->b:Lapg;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lapg;)Laui;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Laui;

    invoke-direct {v0, p0, p1}, Laui;-><init>(Landroid/graphics/Bitmap;Lapg;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Laui;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Laui;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lbak;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Laui;->b:Lapg;

    iget-object v1, p0, Laui;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lapg;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Laui;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
