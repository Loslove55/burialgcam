.class public final Lfts;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/googlex/gcam/ExifMetadata;

.field public final b:I

.field public final c:Lcom/google/googlex/gcam/AeShotParams;

.field private final d:Lcom/google/googlex/gcam/SpatialGainMap;


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/ExifMetadata;ILcom/google/googlex/gcam/AeShotParams;Lcom/google/googlex/gcam/SpatialGainMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfts;->a:Lcom/google/googlex/gcam/ExifMetadata;

    iput p2, p0, Lfts;->b:I

    iput-object p3, p0, Lfts;->c:Lcom/google/googlex/gcam/AeShotParams;

    iput-object p4, p0, Lfts;->d:Lcom/google/googlex/gcam/SpatialGainMap;

    return-void
.end method
