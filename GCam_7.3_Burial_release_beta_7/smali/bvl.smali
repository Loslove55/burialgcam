.class final synthetic Lbvl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbvn;

.field private final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lbvn;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvl;->a:Lbvn;

    iput-object p2, p0, Lbvl;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbvl;->a:Lbvn;

    iget-object v1, p0, Lbvl;->b:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lbvn;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, v0, Lbvn;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130379

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
