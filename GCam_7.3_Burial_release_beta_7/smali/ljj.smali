.class public final Lljj;
.super Lkvv;

# interfaces
.implements Llfu;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:[B

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lljk;

    invoke-direct {v0}, Lljk;-><init>()V

    sput-object v0, Lljj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lkvv;-><init>()V

    iput p1, p0, Lljj;->a:I

    iput-object p2, p0, Lljj;->b:Ljava/lang/String;

    iput-object p3, p0, Lljj;->c:[B

    iput-object p4, p0, Lljj;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lljj;->a:I

    iget-object v1, p0, Lljj;->b:Ljava/lang/String;

    iget-object v2, p0, Lljj;->c:[B

    if-eqz v2, :cond_0

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2b

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MessageEventParcelable["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lfib;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lljj;->a:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lfib;->b(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lljj;->b:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lfib;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lljj;->c:[B

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lfib;->a(Landroid/os/Parcel;I[B)V

    iget-object v0, p0, Lljj;->d:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lfib;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Lfib;->b(Landroid/os/Parcel;I)V

    return-void
.end method
