package edu.harvard.iq.dataverse;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * @author Jing Ma
 */
 @NamedQueries({
    @NamedQuery( name="License.findAll",
            query="SELECT l FROM License l"),
    @NamedQuery( name="License.findAllActive",
            query="SELECT l FROM License l WHERE l.active='true'"),
    @NamedQuery( name="License.findById",
            query = "SELECT l FROM License l WHERE l.id=:id"),
    @NamedQuery( name="License.findDefault",
            query = "SELECT l FROM License l WHERE l.name='CC0'"),
    @NamedQuery( name="License.findByNameOrUri",
            query = "SELECT l FROM License l WHERE l.name=:name OR l.uri=:uri"),
    @NamedQuery( name="License.deleteById",
                query="DELETE FROM License l WHERE l.id=:id"),
    @NamedQuery( name="License.deleteByName",
                query="DELETE FROM License l WHERE l.name=:name")
})
@Entity
@Table(uniqueConstraints = {
      @UniqueConstraint(columnNames = "name"),
      @UniqueConstraint(columnNames = "uri")}
)
public class License {
     public static String CC0 = "http://creativecommons.org/publicdomain/zero/1.0";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(columnDefinition="TEXT", nullable = false, unique = true)
    private String name;

    @Column(columnDefinition="TEXT", nullable = false, unique = true)
    private String uri;

    @Column(columnDefinition="TEXT")
    private String iconUrl;

    @Column(nullable = false)
    private boolean active;

    @OneToMany(mappedBy="license")
    private List<TermsOfUseAndAccess> termsOfUseAndAccess;

    public License() {
    }

    public License(String name, URI uri, URI iconUrl, boolean active) {
        this.name = name;
        this.uri = uri.toASCIIString();
        this.iconUrl = iconUrl.toASCIIString();
        this.active = active;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public URI getUri() {
        try {
            return new URI(uri);
        } catch (URISyntaxException e) {
            throw new IllegalStateException("Incorrect URI in JSON");
        }
    }

    public void setUri(URI uri) {
        this.uri = uri.toASCIIString();
    }

    public URI getIconUrl() {
        try {
            return new URI(iconUrl);
        } catch (URISyntaxException e) {
            throw new IllegalStateException("Incorrect URI in JSON");
        }
    }

    public void setIconUrl(URI iconUrl) {
        this.iconUrl = iconUrl.toASCIIString();
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public List<TermsOfUseAndAccess> getTermsOfUseAndAccess() {
        return termsOfUseAndAccess;
    }

    public void setTermsOfUseAndAccess(List<TermsOfUseAndAccess> termsOfUseAndAccess) {
        this.termsOfUseAndAccess = termsOfUseAndAccess;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        License license = (License) o;
        return active == license.active && id.equals(license.id) && name.equals(license.name) && uri.equals(license.uri) && iconUrl.equals(license.iconUrl);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, uri, iconUrl, active);
    }

    @Override
    public String toString() {
        return "License{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", uri=" + uri +
                ", iconUrl=" + iconUrl +
                ", active=" + active +
                '}';
    }
    
}
