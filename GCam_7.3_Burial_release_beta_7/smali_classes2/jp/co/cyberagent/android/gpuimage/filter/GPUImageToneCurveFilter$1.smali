.class Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;
.super Ljava/lang/Object;
.source "GPUImageToneCurveFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->updateToneCurveTexture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$000(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$100(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x100

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$200(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$300(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$400(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v3, 0x2

    int-to-float v5, v1

    iget-object v6, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v6}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$300(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v5

    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v7}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$400(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v8, 0x437f0000    # 255.0f

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v3, 0x1

    iget-object v6, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v6}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$200(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v5

    iget-object v9, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v9}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$400(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v4}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$100(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v5, v4

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-static {v4}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->access$400(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v5, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x3

    const/4 v4, -0x1

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x100

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_1
    return-void
.end method
