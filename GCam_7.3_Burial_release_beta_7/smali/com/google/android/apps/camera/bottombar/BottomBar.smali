.class public Lcom/google/android/apps/camera/bottombar/BottomBar;
.super Landroid/widget/LinearLayout;


# instance fields
.field public appContext:Landroid/content/Context;

.field private final backgroundColor:I

.field private cameraSwitchButton:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

.field private cancelButton:Landroid/widget/ImageButton;

.field private contentSidePadding:I

.field private currentLeftButton:Landroid/view/View;

.field private currentRightButton:Landroid/view/View;

.field gestureDetector:Landroid/view/GestureDetector;

.field private hfrButton:Lcom/google/android/apps/camera/bottombar/HfrButton;

.field private hideNavBar:Z

.field isDoubleClick:Z

.field private isShown:Z

.field lastTouchUpTime:J

.field private leftSideCancelButton:Landroid/widget/ImageButton;

.field private orientation:Ljzj;

.field private pauseResumeButton:Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

.field private retakeButton:Landroid/widget/ImageButton;

.field private reviewPlayButton:Landroid/widget/ImageButton;

.field private shutterButton:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

.field private snapshotButton:Lcom/google/android/apps/camera/bottombar/SnapshotButton;

.field private sysUiFlagApplier:Liod;

.field private thumbnailView:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field private useUnimakLayout:Z

.field private verticalOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Ljzj;->a:Ljzj;

    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->orientation:Ljzj;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->isShown:Z

    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->hideNavBar:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->useUnimakLayout:Z

    sget p2, Lcom/google/android/apps/camera/bottombar/R$color;->bottom_bar_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->backgroundColor:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->inflate(Landroid/content/Context;)V

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->lastTouchUpTime:J

    iput-boolean v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->isDoubleClick:Z

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->appContext:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/google/android/apps/camera/bottombar/XmlConfig$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/camera/bottombar/XmlConfig$GestureListener;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBar;Lcom/google/android/apps/camera/bottombar/XmlConfig$GestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private adjustPadding()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->useUnimakLayout:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->bottom_bar_content_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    if-le v2, v1, :cond_4

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->bottom_bar_content_size_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getShutterButton()Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->bottom_bar_content_size_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getShutterButton()Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_1
    nop

    const-string v2, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_2
    nop

    const/4 v2, 0x0

    :goto_1
    sget v4, Lcom/google/android/apps/camera/bottombar/R$dimen;->photo_button_radius:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v0

    sub-int v4, v1, v0

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-int/2addr v0, v2

    if-gt v0, v1, :cond_3

    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->verticalOffset:I

    add-float/2addr v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->verticalOffset:I

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->hideNavBar()V

    iput v3, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->verticalOffset:I

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->applyOrientation()V

    return-void
.end method

.method private applyOrientation()V
    .locals 3

    const-string v0, "bottomBar:applyOrientation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->orientation:Ljzj;

    invoke-static {p0, v0}, Ljzk;->c(Landroid/view/View;Ljzj;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lj$/util/Collection$$Dispatch;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/bottombar/BottomBar$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/bottombar/BottomBar$$Lambda$0;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBar;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private fadeView(Landroid/view/View;ZZ)V
    .locals 2

    invoke-static {}, Lllq;->a()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p3, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    nop

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    nop

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0, p1}, Lkbn;->a(ILandroid/view/View;)V

    return-void
.end method

.method private hideNavBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->sysUiFlagApplier:Liod;

    if-eqz v0, :cond_0

    const/16 v1, 0x1006

    invoke-interface {v0, v1}, Liod;->b(I)V

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->hideNavBar:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$layout;->bottom_bar_layout:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkbo;->a(Landroid/view/View;)Lkbo;

    move-result-object p1

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->shutter_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->shutterButton:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->pause_resume_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->pauseResumeButton:Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->camera_switch_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->cameraSwitchButton:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->snapshot_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/bottombar/SnapshotButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->snapshotButton:Lcom/google/android/apps/camera/bottombar/SnapshotButton;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->thumbnail_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->thumbnailView:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->hfr_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/bottombar/HfrButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->hfrButton:Lcom/google/android/apps/camera/bottombar/HfrButton;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->cancel_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->cancelButton:Landroid/widget/ImageButton;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->left_side_cancel_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->leftSideCancelButton:Landroid/widget/ImageButton;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->retake_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->retakeButton:Landroid/widget/ImageButton;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$id;->review_play_button:I

    invoke-virtual {p1, v0}, Lkbo;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->reviewPlayButton:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public changeSideButtons(Landroid/view/View;Landroid/view/View;Z)V
    .locals 2

    invoke-static {}, Lllq;->a()V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->currentLeftButton:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->fadeView(Landroid/view/View;ZZ)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->currentLeftButton:Landroid/view/View;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    nop

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->fadeView(Landroid/view/View;ZZ)V

    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->currentRightButton:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    nop

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->fadeView(Landroid/view/View;ZZ)V

    :goto_2
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->currentRightButton:Landroid/view/View;

    if-eqz p2, :cond_3

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->fadeView(Landroid/view/View;ZZ)V

    :cond_3
    return-void
.end method

.method public fadeBackground(ZZ)V
    .locals 2

    invoke-static {}, Lllq;->a()V

    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->isShown:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->isShown:Z

    if-eqz p2, :cond_1

    const-string p2, "alpha"

    const/4 v0, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/google/android/apps/camera/bottombar/R$integer;->bottom_bar_recording_fade_duration_ms:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/google/android/apps/camera/bottombar/R$integer;->bottom_bar_recording_fade_delay_ms:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0xff

    :goto_1
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_3
    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public getBackgroundColorProperty()Ljyx;
    .locals 1

    new-instance v0, Lcom/google/android/apps/camera/bottombar/BottomBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/bottombar/BottomBar$1;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBar;)V

    return-object v0
.end method

.method public getCameraSwitchButton()Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->cameraSwitchButton:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    return-object v0
.end method

.method public getCancelButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->cancelButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getHfrButton()Lcom/google/android/apps/camera/bottombar/HfrButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->hfrButton:Lcom/google/android/apps/camera/bottombar/HfrButton;

    return-object v0
.end method

.method public getLeftSideCancelButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->leftSideCancelButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPauseResumeButton()Lcom/google/android/apps/camera/bottombar/PauseResumeButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->pauseResumeButton:Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    return-object v0
.end method

.method getPhotoVideoSwitchTranslation()F
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$dimen;->bottom_bar_content_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->photo_video_switch_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRetakeButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->retakeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getReviewPlayButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->reviewPlayButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getShutterButton()Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->shutterButton:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    return-object v0
.end method

.method public getSnapshotButton()Lcom/google/android/apps/camera/bottombar/SnapshotButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->snapshotButton:Lcom/google/android/apps/camera/bottombar/SnapshotButton;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->thumbnailView:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    return-object v0
.end method

.method public getUiOrientation()Ljzj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->orientation:Ljzj;

    return-object v0
.end method

.method final synthetic lambda$applyOrientation$0$BottomBar(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->orientation:Ljzj;

    invoke-static {p1, v0}, Ljzk;->a(Landroid/view/View;Ljzj;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$dimen;->bottom_bar_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->verticalOffset:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$dimen;->bottom_bar_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->contentSidePadding:I

    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->useUnimakLayout:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setBottomBarConstant()V

    :goto_0
    iget v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->contentSidePadding:I

    iget v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->verticalOffset:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setPadding(IIII)V

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getCameraSwitchButton()Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->currentLeftButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getThumbnailButton()Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->currentRightButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->isShown:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const-string v0, "bottomBar:onLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->verticalOffset:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljtb;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    nop

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->contentSidePadding:I

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setPadding(IIII)V

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->applyOrientation()V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const-string v0, "bottomBar:onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->orientation:Ljzj;

    invoke-static {v0}, Ljzj;->a(Ljzj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p2, p1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->adjustPadding()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBottomBarConstant()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->verticalOffset:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->useUnimakLayout:Z

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setBackgroundColor(I)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setSideButtonsClickable(Z)V

    return-void
.end method

.method public setSideButtonsClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->currentRightButton:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->currentLeftButton:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public setSysUiFlagApplier(Liod;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->sysUiFlagApplier:Liod;

    iget-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->hideNavBar:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->hideNavBar()V

    :cond_0
    return-void
.end method

.method public setUiOrientation(Ljzj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->orientation:Ljzj;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->orientation:Ljzj;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->applyOrientation()V

    :cond_0
    return-void
.end method
