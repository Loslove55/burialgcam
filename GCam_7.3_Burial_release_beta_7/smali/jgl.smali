.class public final Ljgl;
.super Ljava/lang/Object;

# interfaces
.implements Ljzd;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public final a:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

.field private final c:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CaptLayoutHelper"

    invoke-static {v0}, Lijd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljgl;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljgl;->c:Landroid/app/Activity;

    const v0, 0x7f0b0046

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iput-object p1, p0, Ljgl;->a:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Ljgl;->a:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljgc;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljgc;->b()Ljfz;

    move-result-object v0

    invoke-virtual {v0}, Ljfz;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v1

    :cond_0
    sget-object v0, Ljgl;->b:Ljava/lang/String;

    const-string v1, "Preview rectangle is not available now"

    invoke-static {v0, v1}, Lijd;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Ljgl;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method
