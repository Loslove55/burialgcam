.class final synthetic Leei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lefa;

.field private final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lefa;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leei;->a:Lefa;

    iput-object p2, p0, Leei;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Leei;->a:Lefa;

    iget-object v1, p0, Leei;->b:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lefa;->y:Lkfd;

    invoke-interface {v0, v1}, Lkfd;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
