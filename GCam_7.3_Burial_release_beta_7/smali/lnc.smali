.class public final Llnc;
.super Ljava/lang/Object;

# interfaces
.implements Llum;
.implements Llne;


# instance fields
.field private final a:Llum;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llum;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llnc;->a:Llum;

    iput-object p2, p0, Llnc;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llnc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Llnc;->a:Llum;

    invoke-interface {v0}, Llum;->close()V

    return-void
.end method
