.class public final Lgrc;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;)V
    .locals 0

    iput-object p1, p0, Lgrc;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lgrc;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getScrollY()I

    move-result p1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    const/4 p1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgrc;->b:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lgrc;->b:Z

    :goto_0
    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object p3, p0, Lgrc;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->a:Ljava/lang/String;

    const v0, 0x7f0b0127

    invoke-virtual {p3, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getPaddingBottom()I

    move-result p3

    add-int/2addr v0, p3

    const/4 p3, 0x0

    if-ge v1, v0, :cond_1

    iget-boolean v0, p0, Lgrc;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    const/high16 p1, 0x42a00000    # 80.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    const/high16 p1, -0x3c6a0000    # -300.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_2

    iput-boolean p3, p0, Lgrc;->b:Z

    iget-object p1, p0, Lgrc;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    iget-object p1, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->h:Lgrb;

    check-cast p1, Lgqm;

    iget-object p1, p1, Lgqm;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->l()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
