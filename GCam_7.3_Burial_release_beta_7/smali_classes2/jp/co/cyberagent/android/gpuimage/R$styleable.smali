.class public final Ljp/co/cyberagent/android/gpuimage/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GPUImageView:[I

.field public static final GPUImageView_gpuimage_show_loading:I = 0x0

.field public static final GPUImageView_gpuimage_surface_type:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/R$styleable;->GPUImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02008f
        0x7f020090
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
