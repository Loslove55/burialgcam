.class public Lcom/google/android/gms/vision/face/internal/client/FaceParcel;
.super Lkvv;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:[Llfh;

.field public final o:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llfj;

    invoke-direct {v0}, Llfj;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIFFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF[Llfh;F)V
    .locals 0

    invoke-direct {p0}, Lkvv;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->a:I

    iput p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->b:I

    iput p3, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->c:F

    iput p4, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->d:F

    iput p5, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->e:F

    iput p6, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->f:F

    iput p7, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->g:F

    iput p8, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->h:F

    iput p9, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->i:F

    iput-object p10, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->j:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    iput p11, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->k:F

    iput p12, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->l:F

    iput p13, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->m:F

    iput-object p14, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->n:[Llfh;

    iput p15, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->o:F

    return-void
.end method

.method public constructor <init>(IIFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF)V
    .locals 17

    const/4 v0, 0x0

    new-array v15, v0, [Llfh;

    const/4 v10, 0x0

    const/high16 v16, -0x40800000    # -1.0f

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;-><init>(IIFFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF[Llfh;F)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lfib;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lfib;->b(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->b:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lfib;->b(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->c:F

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->d:F

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->e:F

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->f:F

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->g:F

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->h:F

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget-object v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->j:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2}, Lfib;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->k:F

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->l:F

    const/16 v2, 0xb

    invoke-static {p1, v2, v1}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->m:F

    const/16 v2, 0xc

    invoke-static {p1, v2, v1}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget-object v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->n:[Llfh;

    const/16 v2, 0xd

    invoke-static {p1, v2, v1, p2}, Lfib;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->i:F

    const/16 v1, 0xe

    invoke-static {p1, v1, p2}, Lfib;->a(Landroid/os/Parcel;IF)V

    iget p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->o:F

    const/16 v1, 0xf

    invoke-static {p1, v1, p2}, Lfib;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lfib;->b(Landroid/os/Parcel;I)V

    return-void
.end method
