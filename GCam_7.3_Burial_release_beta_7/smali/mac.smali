.class final synthetic Lmac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lmaf;

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(Lmaf;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmac;->a:Lmaf;

    iput-wide p2, p0, Lmac;->b:J

    iput p4, p0, Lmac;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lmac;->a:Lmaf;

    iget-wide v1, p0, Lmac;->b:J

    iget v3, p0, Lmac;->c:I

    iget-object v0, v0, Lmaf;->a:Lmza;

    invoke-virtual {v0, v1, v2, v3}, Lmza;->a(JI)V

    return-void
.end method
