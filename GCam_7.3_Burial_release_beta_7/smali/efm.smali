.class final synthetic Lefm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lefq;

.field private final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lefq;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefm;->a:Lefq;

    iput-object p2, p0, Lefm;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lefm;->a:Lefq;

    iget-object v1, p0, Lefm;->b:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lefq;->g:Lkfd;

    invoke-interface {v0, v1}, Lkfd;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
