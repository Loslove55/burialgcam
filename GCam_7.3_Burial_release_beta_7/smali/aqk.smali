.class public final Laqk;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/app/ActivityManager;

.field final b:Laqm;

.field c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laqk;->c:F

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Laqk;->a:Landroid/app/ActivityManager;

    new-instance v0, Laql;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Laql;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Laqk;->b:Laqm;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p0, Laqk;->a:Landroid/app/ActivityManager;

    invoke-static {p1}, Laqn;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Laqk;->c:F

    :cond_0
    return-void
.end method
