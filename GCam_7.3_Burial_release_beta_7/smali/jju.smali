.class final Ljju;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;)V
    .locals 0

    iput-object p1, p0, Ljju;->a:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ljju;->a:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setVisibility(I)V

    iget-object p1, p0, Ljju;->a:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    sget-object v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->l:Z

    return-void
.end method
