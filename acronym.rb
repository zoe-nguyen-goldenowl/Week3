class Acronym
    
    def self.abbreviate(acronym)
        a = []
        acronym.split(/[\s-]/).map {|i| a << i.slice(0)}
        a.join.upcase
    end
end
 Acronym.abbreviate("Portable Network Graphics")
 =begin
 Convert a phrase to its acronym.
 Techies love their TLA (Three Letter Acronyms)!
 Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its 
 acronym (PNG).
 =end