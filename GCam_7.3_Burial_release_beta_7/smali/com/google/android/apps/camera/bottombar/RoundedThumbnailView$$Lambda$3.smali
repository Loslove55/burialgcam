.class final synthetic Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final arg$1:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$Lambda$3;->arg$1:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$Lambda$3;->arg$1:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->lambda$runBurstFlashAnimation$3$RoundedThumbnailView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
