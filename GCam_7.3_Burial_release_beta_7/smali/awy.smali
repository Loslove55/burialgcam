.class public final Lawy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lalu;

.field public static final b:Lalu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lalg;->c:Lalg;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v1, v0}, Lalu;->a(Ljava/lang/String;Ljava/lang/Object;)Lalu;

    move-result-object v0

    sput-object v0, Lawy;->a:Lalu;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lalu;->a(Ljava/lang/String;Ljava/lang/Object;)Lalu;

    move-result-object v0

    sput-object v0, Lawy;->b:Lalu;

    return-void
.end method
